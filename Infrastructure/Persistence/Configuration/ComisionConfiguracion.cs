using TD.Backoffice.API_DbContext.Domain.Entities;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection.Emit;

namespace Backoffice.Infrastructure.Persistence.Configuration
{
    public partial class ComisionConfiguracion : IEntityTypeConfiguration<Comision> {
		public void Configure(EntityTypeBuilder<Comision> entity)
		{
			#region PK
			entity.HasKey(tc => tc.Id);
			#endregion

			//#region IX
			//entity.HasIndex(tc => tc.dFecha, "IX_ValorUDIBanxico_dFecha").IsUnique();
			//#endregion

			#region Campos
			entity.Property(tc => tc.CuotaMinimaMensual).IsRequired().HasColumnType("decimal(18,6)");
			entity.Property(tc => tc.CuotaInfraestructuraUDI).IsRequired();
			entity.Property(tc => tc.CuotaInfraestructuraUDIMoneda).IsRequired().HasColumnType("decimal(18,6)");
			entity.Property(tc => tc.CostoPorUsuarioAdicional).IsRequired();
			entity.Property(tc => tc.CostoPorUsuarioAdicionalMoneda).IsRequired().HasColumnType("decimal(18,6)");
			#endregion

			#region Campos de auditoria

			entity.Property(e => e.UpdatedAt).HasColumnType("datetime");
			entity.Property(e => e.CreatedAt).HasColumnType("datetime").HasDefaultValueSql("CURRENT_TIMESTAMP");

			#endregion

			entity
			.HasOne(c => c.UserGuarda) // Una comisión tiene un usuario
			.WithMany() // Un usuario puede tener muchas comisiones
			.HasForeignKey(c => c.IdUserGuarda) // Clave foránea en Comision
			.OnDelete(DeleteBehavior.Restrict);

			entity
			.HasOne(c => c.UserActualiza) // Una comisión tiene un usuario
			.WithMany() // Un usuario puede tener muchas comisiones
			.HasForeignKey(c => c.IdUserActualiza) // Clave foránea en Comision
			.OnDelete(DeleteBehavior.Restrict);


			OnConfigurePartial(entity);
		}

		partial void OnConfigurePartial(EntityTypeBuilder<Comision> entity);
	}
}
