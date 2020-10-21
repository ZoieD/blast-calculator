'use strict';
// import {PythonShell} from 'python-shell';
const PythonShell = require('python-shell').PythonShell;
const path = require('path');

module.exports = app => {
  class HomeController extends app.Controller {
    * index() {
      const ctx = this.ctx;
      ctx.body = yield ctx.renderView('index.tpl');
    }

    async calculate() {
      const ctx = this.ctx;
      const body = ctx.request.body;
      const n = body.n;
      const ll = body.l / body.L;
      const hh = body.h / body.H;
      const lh = body.L / body.H;
      const za = body.ra *3.28 / Math.pow(body.w*2.2, 1/3);
      const lra = body.L / body.ra;
      const w = body.w * 2.2;
      const result = await handlePython(n, ll, hh, lh, za, lra, w);
      const pressure = parseFloat(result[0].replace(/\[|]/g,'')).toFixed(2);
      const si_pressure = (pressure * 6.89).toFixed(2);
      const impulses_scale = parseFloat(result[1].replace(/\[|]/g,'')).toFixed(2);
      const si_impulses_scale = (impulses_scale * 8.97).toFixed(2);
      const impulses = (impulses_scale * Math.pow(body.w, 1/3)).toFixed(2);
      const si_impulses = (impulses * 8.97).toFixed(2);
      const t0 = parseFloat(result[2].replace(/\[|]/g,'')).toFixed(3);
      if( result ) {
        // ctx.redirect('/')
        await ctx.render('index.tpl', {pressure: pressure, si_pressure: si_pressure, impulses_scale: impulses_scale, si_impulses_scale: si_impulses_scale, impulses: impulses, si_impulses: si_impulses, t0: t0})
      }
    }
  }
  return HomeController;
};
function handlePython(n, ll, hh, lh, za, lra, w){
  let options = {
    mode: 'text',
    pythonPath: '/root/anaconda3/envs/cougar/bin/python',
    // pythonPath: '/Users/liangze/anaconda3/envs/grf/bin/python',
    pythonOptions: ['-u'],
    scriptPath: path.resolve(process.cwd(), 'app/controller/python'),
    // n, ll, hh, lh, za, lra
    args: [n, ll, hh, lh, za, lra, w]
  };
  return new Promise((resolve, reject)=>{
    PythonShell.run('run.py', options, function (err, results) {
      if (err) throw err;
      resolve(results);
    })
  })
}
