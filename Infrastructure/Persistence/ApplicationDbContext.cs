// Licensed to the .NET Foundation under one or more agreements.

using TD.Backoffice.API_DbContext.Domain.DTO.Models;
using TD.Backoffice.API_DbContext.Domain.Entities;
using TD.Backoffice.API_DbContext.Domain.Interfaces.Repositories;
using Backoffice.Infrastructure.Persistence.Configuration;
using Microsoft.EntityFrameworkCore;
using System.Reflection;

namespace Backoffice.Infrastructure.Persistence
{
    public partial class ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : DbContext(options), IRepositoryService
    {
        public DbSet<User> Users { get; set; }

        public DbSet<UserSession> UsersSessions { get; set; }

        public DbSet<UserNotification> UsersNotifications { get; set; }

        public DbSet<UserDevice> UsersDevices { get; set; }

        public DbSet<Comision> Comision { get; set; }

        public DbSet<RangoComision> RangoComision { get; set; }
        public DbSet<ValorUDIBanxico> ValorUDIBanxico { get; set; }
        public DbSet<HistoricoValorUDIBanxico> HistoricoValorUDIBanxico { get; set; }
        public DbSet<HistoricoComision> HistoricoComision { get; set; }
        public DbSet<HistoricoRangoComision> HistoricoRangoComision { get; set; }
        public DbSet<RegimenFiscal> RegimenFiscal { get; set; }

        public DbSet<CFDI> CFDI { get; set; }

        public DbSet<EsquemaCobro> EsquemaCobro { get; set; }

        public DbSet<ComisionCliente> ComisionCliente { get; set; }

        public DbSet<RangoComisionCliente> RangoComisionCliente { get; set; }

        public DbSet<Cliente> Cliente { get; set; }
        public DbSet<EstatusCliente> EstatusCliente { get; set; }
        public DbSet<DatosGenerales> DatosGenerales { get; set; }
        public DbSet<Documentos> Documentos { get; set; }
        public DbSet<Direccion> Direccion { get; set; }
        public DbSet<Configuraciones> Configuraciones { get; set; }
        public DbSet<TipoDocumento> TipoDocumentos { get; set; }
        public DbSet<UsuariosCliente> UsuariosCliente { get; set; }

        //Catalogos
        public DbSet<MetodoPagoSat> MetodoPagoSat { get; set; }
        public DbSet<FormaPagoSat> FormaPagoSat { get; set; }
        public DbSet<ClaveUnidadSat> ClaveUnidadSat { get; set; }
        public DbSet<ProductoServicioSat> ProductoServicioSat { get; set; }

        /// Add user profiles authorization
        public DbSet<UsuarioPerfil> UsuarioPerfiles { get; set; }

        public DbSet<UsuarioProceso> UsuarioProcesos { get; set; }

        public DbSet<UsuarioPerfilProceso> UsuarioPerfilesProcesos { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfigurationsFromAssembly(Assembly.GetExecutingAssembly());

            modelBuilder.ApplyConfiguration(new ComisionConfiguracion());
            modelBuilder.ApplyConfiguration(new HistoricoComisionConfiguration());
            modelBuilder.ApplyConfiguration(new RangoComisionConfiguration());
            modelBuilder.ApplyConfiguration(new HistoricoRangoComisionConfiguration());
            modelBuilder.ApplyConfiguration(new ValorUDIBanxicoConfiguration());
            modelBuilder.ApplyConfiguration(new ClienteConfiguration());
            modelBuilder.ApplyConfiguration(new EstatusClienteConfiguration());
            modelBuilder.ApplyConfiguration(new EsquemaCobroConfiguration());
            modelBuilder.ApplyConfiguration(new DatosGeneralesConfiguration());
            modelBuilder.ApplyConfiguration(new DocumentosConfiguration());
            modelBuilder.ApplyConfiguration(new ComisionClienteConfiguration());
            modelBuilder.ApplyConfiguration(new RangoComisionClienteConfiguration());
            modelBuilder.ApplyConfiguration(new DireccionConfiguration());
            modelBuilder.ApplyConfiguration(new ConfiguracionesConfiguration());
            modelBuilder.ApplyConfiguration(new TipoDocumentoConfiguration());
            modelBuilder.ApplyConfiguration(new UsuariosClienteConfiguration());
            modelBuilder.ApplyConfiguration(new MetodoPagoSatConfiguration());
            modelBuilder.ApplyConfiguration(new FormaPagoSatConfiguration());
            modelBuilder.ApplyConfiguration(new ClaveUnidadSatConfiguration());
            modelBuilder.ApplyConfiguration(new ProductoServicioSatConfiguration());
            modelBuilder.ApplyConfiguration(new UserConfiguration());
            modelBuilder.ApplyConfiguration(new UsuarioPerfilConfiguration());
            modelBuilder.ApplyConfiguration(new UsuarioPerfilConfiguration());
            modelBuilder.ApplyConfiguration(new UsuarioProcesoConfiguration());
            modelBuilder.ApplyConfiguration(new UsuarioPerfilProcesoConfiguration());

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
