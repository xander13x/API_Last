using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using API_Last;

namespace API_Last.Controllers
{
    public class TBL_CMV_CLIENTEController : Controller
    {
        private clientesEntities db = new clientesEntities();

        // GET: TBL_CMV_CLIENTE
        public ActionResult Index()
        {
            return View(db.TBL_CMV_CLIENTE.ToList());
        }

        // GET: TBL_CMV_CLIENTE/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TBL_CMV_CLIENTE tBL_CMV_CLIENTE = db.TBL_CMV_CLIENTE.Find(id);
            if (tBL_CMV_CLIENTE == null)
            {
                return HttpNotFound();
            }
            return View(tBL_CMV_CLIENTE);
        }

        // GET: TBL_CMV_CLIENTE/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TBL_CMV_CLIENTE/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idCliente,nombre,apellidoPaterno,apellidoMaterno,rfc,curp,fechaAlta")] TBL_CMV_CLIENTE tBL_CMV_CLIENTE)
        {
            if (ModelState.IsValid)
            {
                db.TBL_CMV_CLIENTE.Add(tBL_CMV_CLIENTE);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tBL_CMV_CLIENTE);
        }

        // GET: TBL_CMV_CLIENTE/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TBL_CMV_CLIENTE tBL_CMV_CLIENTE = db.TBL_CMV_CLIENTE.Find(id);
            if (tBL_CMV_CLIENTE == null)
            {
                return HttpNotFound();
            }
            return View(tBL_CMV_CLIENTE);
        }

        // POST: TBL_CMV_CLIENTE/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idCliente,nombre,apellidoPaterno,apellidoMaterno,rfc,curp,fechaAlta")] TBL_CMV_CLIENTE tBL_CMV_CLIENTE)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tBL_CMV_CLIENTE).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tBL_CMV_CLIENTE);
        }

        // GET: TBL_CMV_CLIENTE/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TBL_CMV_CLIENTE tBL_CMV_CLIENTE = db.TBL_CMV_CLIENTE.Find(id);
            if (tBL_CMV_CLIENTE == null)
            {
                return HttpNotFound();
            }
            return View(tBL_CMV_CLIENTE);
        }

        // POST: TBL_CMV_CLIENTE/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TBL_CMV_CLIENTE tBL_CMV_CLIENTE = db.TBL_CMV_CLIENTE.Find(id);
            db.TBL_CMV_CLIENTE.Remove(tBL_CMV_CLIENTE);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
