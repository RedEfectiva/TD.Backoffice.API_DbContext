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
    public class DireccionConfiguration : IEntityTypeConfiguration<Direccion>
    {
        public void Configure(EntityTypeBuilder<Direccion> builder)
        {
            builder.ToTable("Direccion");

            builder.HasKey(c => c.IdDireccion);

            builder.Property(c => c.DireccionFiscal);
            builder.Property(c => c.sNumExterior);
            builder.Property(c => c.sNumInterior);
            builder.Property(c => c.nCodigoPostal);
            builder.Property(c => c.EstadoMexicanoNombre);
            builder.Property(c => c.MunicipioMexicanoNombre);
            builder.Property(c => c.ColoniaMexicanaNombre);
            builder.Property(c => c.CiudadNombre);
            builder.Property(c => c.Pais);
            
            builder.HasOne(c => c.DatosGenerales)
                .WithOne(d => d.Direccion)
                .HasForeignKey<DatosGenerales>(d => d.DireccionId)
                .OnDelete(DeleteBehavior.Cascade);
        }
    }
}
