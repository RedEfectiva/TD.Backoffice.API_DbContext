namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class PagedResult<T>
    {
        public int Total { get; set; }
        public int TotalCount { get; set; }
        public int TotalPages { get; set; }
        public List<T> Clients { get; set; } = [];
    }
}
