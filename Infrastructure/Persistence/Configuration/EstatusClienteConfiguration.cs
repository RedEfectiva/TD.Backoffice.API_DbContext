using TD.Backoffice.API_DbContext.Domain.DTO.Models;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Backoffice.Infrastructure.Persistence.Configuration
{
    public class EstatusClienteConfiguration : IEntityTypeConfiguration<EstatusCliente>
    {
        public void Configure(EntityTypeBuilder<EstatusCliente> builder)
        {
            builder.ToTable("EstatusCliente");

            builder.HasKey(e => e.IdEstatusCliente);

            builder.Property(e => e.Nombre)
                .IsRequired()
                .HasMaxLength(100);
        }
    }
}
