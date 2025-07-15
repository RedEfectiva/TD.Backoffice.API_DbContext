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
	public partial class HistoricoValorUDIBanxicoConfiguration : IEntityTypeConfiguration<HistoricoValorUDIBanxico> {
		public void Configure(EntityTypeBuilder<HistoricoValorUDIBanxico> entity)
		{
			#region PK
			entity.HasKey(tc => tc.IdHistorico);
			#endregion

			#region IX
			entity.HasIndex(tc => tc.dFecha, "IX_HistoricoValorUDIBanxico_dFecha").IsUnique();
			#endregion

			#region Campos
			entity.Property(tc => tc.dFecha).IsRequired().HasColumnType<DateTime>("datetime");
			entity.Property(tc => tc.nValor).IsRequired().HasColumnType("decimal(18,6)");
			#endregion

			#region Campos de auditoria

			entity.Property(e => e.UpdatedAt).HasColumnType("datetime");
			entity.Property(e => e.CreatedAt).HasColumnType("datetime").HasDefaultValueSql("CURRENT_TIMESTAMP");
			#endregion

			OnConfigurePartial(entity);
		}

		partial void OnConfigurePartial(EntityTypeBuilder<HistoricoValorUDIBanxico> entity);
	}
}
