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
    public class ConfiguracionesConfiguration : IEntityTypeConfiguration<Configuraciones>
    {
        public void Configure(EntityTypeBuilder<Configuraciones> builder)
        {
            builder.ToTable("Configuraciones");

            builder.HasKey(c => c.IdConfiguracion);

            builder.Property(c => c.NombreServicio)
            .IsRequired()
            .HasMaxLength(255);

            builder.Property(c => c.TipoServicio)
            .HasMaxLength(255);

            builder.Property(c => c.ClaveServicio)
            .HasMaxLength(255);

            builder.Property(c => c.NombreValorPrincipal)
            .HasMaxLength(255);

            builder.Property(c => c.ValorPrincipal)
            .HasMaxLength(255);

            builder.Property(c => c.Url)
            .HasMaxLength(255);

            builder.Property(c => c.Region)
            .HasMaxLength(50);
        }
    }
}
