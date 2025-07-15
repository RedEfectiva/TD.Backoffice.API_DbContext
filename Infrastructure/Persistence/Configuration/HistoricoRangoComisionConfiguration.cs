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
    public partial class HistoricoRangoComisionConfiguration : IEntityTypeConfiguration<HistoricoRangoComision> {
		public void Configure(EntityTypeBuilder<HistoricoRangoComision> entity)
		{
			#region PK
			entity.HasKey(tc => tc.Id);
			#endregion

			//#region IX
			//entity.HasIndex(tc => tc.dFecha, "IX_ValorUDIBanxico_dFecha").IsUnique();
			//#endregion

			#region Campos
			entity.Property(tc => tc.Nivel).IsRequired();
			entity.Property(tc => tc.RangoInicial).IsRequired();
			entity.Property(tc => tc.RangoFinal).IsRequired();
			entity.Property(tc => tc.CantidadComisionEnMoneda).IsRequired().HasColumnType("decimal(18,6)");

			entity.Property(tc => tc.NivelOld).IsRequired();
			entity.Property(tc => tc.RangoInicialOld).IsRequired();
			entity.Property(tc => tc.RangoFinalOld).IsRequired();
			entity.Property(tc => tc.CantidadComisionEnMonedaOld).IsRequired().HasColumnType("decimal(18,6)");

			#endregion

			#region Campos de auditoria

			entity.Property(e => e.UpdatedAt).HasColumnType("datetime").HasDefaultValueSql("CURRENT_TIMESTAMP");
			entity.Property(e => e.CreatedAt).HasColumnType("datetime").HasDefaultValueSql("CURRENT_TIMESTAMP");

			#endregion

			entity
			.HasOne(c => c.UserGuarda) // Una comisión tiene un usuario
			.WithMany() // Un usuario puede tener muchas comisiones
			.HasForeignKey(c => c.IdUserGuarda) // Clave foránea en Comision
			.OnDelete(DeleteBehavior.Restrict);

			


			OnConfigurePartial(entity);
		}

		partial void OnConfigurePartial(EntityTypeBuilder<HistoricoRangoComision> entity);
	}
}
