using TD.Backoffice.API_DbContext.Domain.Entities;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Backoffice.Infrastructure.Persistence.Configuration
{
    public class ClienteConfiguration : IEntityTypeConfiguration<Cliente>
    {
        public void Configure(EntityTypeBuilder<Cliente> builder)
        {
            builder.ToTable("Cliente");

            builder.HasKey(c => c.IdCliente);

            builder.Property(c => c.NombreCliente)
                .IsRequired()
                .HasMaxLength(255);

            builder.HasOne(c => c.Estatus)
                .WithOne(e => e.Cliente)
                .HasForeignKey<Cliente>(c => c.EstatusClienteId)
                .OnDelete(DeleteBehavior.Restrict);

            builder.HasOne(c => c.EsquemaCobro)
                .WithOne(e => e.Cliente)
                .HasForeignKey<EsquemaCobro>(e => e.ClienteId)
                .OnDelete(DeleteBehavior.Cascade);

            builder.HasOne(c => c.ComisionCliente)
                .WithOne(e => e.Cliente)
                .HasForeignKey<ComisionCliente>(e => e.ClienteId)
                .OnDelete(DeleteBehavior.Cascade);
            builder.HasMany(c => c.RangoComisionCliente)
                .WithOne(r => r.Cliente)
                .HasForeignKey(r => r.ClienteId)
                .OnDelete(DeleteBehavior.Cascade);

            builder.HasOne(c => c.DatosGenerales)
                .WithOne(d => d.Cliente)
                .HasForeignKey<DatosGenerales>(d => d.ClienteId)
                .OnDelete(DeleteBehavior.Cascade);

            builder.HasMany(c => c.Documentos)
                .WithOne(d => d.Cliente)
                .HasForeignKey(d => d.ClienteId)
                .OnDelete(DeleteBehavior.Cascade);
            
            builder.HasMany(c => c.UsuariosCliente)
                .WithOne(d => d.Cliente)
                .HasForeignKey(d => d.ClienteId)
                .OnDelete(DeleteBehavior.Cascade);
        }
    }
}
