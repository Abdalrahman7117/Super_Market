﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Group_3
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Super_MarketEntities2 : DbContext
    {
        public Super_MarketEntities2()
            : base("name=Super_MarketEntities2")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<order_detailss> order_detailss { get; set; }
        public virtual DbSet<orderss> ordersses { get; set; }
        public virtual DbSet<payment> payments { get; set; }
        public virtual DbSet<product> products { get; set; }
        public virtual DbSet<shopping_cartss> shopping_cartss { get; set; }
        public virtual DbSet<user> users { get; set; }
    }
}
