﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace API_Last
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class clientesEntities : DbContext
    {
        public clientesEntities()
            : base("name=clientesEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<CAT_CMV_TIPO_CUENTA> CAT_CMV_TIPO_CUENTA { get; set; }
        public virtual DbSet<TBL_CMV_CLIENTE> TBL_CMV_CLIENTE { get; set; }
        public virtual DbSet<TBL_CMV_CLIENTE_CUENTA> TBL_CMV_CLIENTE_CUENTA { get; set; }
    }
}