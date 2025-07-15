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
    public class UsuariosClienteConfiguration : IEntityTypeConfiguration<UsuariosCliente>
    {
        public void Configure(EntityTypeBuilder<UsuariosCliente> builder)
        {
            builder.ToTable("UsuariosCliente");

            builder.HasKey(d => d.IdUsuariosCliente);

            builder.HasOne(d => d.Cliente)
                .WithMany(c => c.UsuariosCliente)
                .HasForeignKey(d => d.ClienteId)
                .OnDelete(DeleteBehavior.Cascade);
        }
    }
}
