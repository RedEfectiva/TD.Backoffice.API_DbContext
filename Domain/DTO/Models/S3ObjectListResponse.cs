
namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class S3ObjectListResponse
    {
        public int ObjectCount { get; set; }
        public IEnumerable<S3ObjectInfo> Objects { get; set; } = null!;
    }


    public class S3ObjectInfo
    {
        public string? BucketName { get; set; }
        public string? Key { get; set; }
        public DateTime? LastModified { get; set; }
        public string? ETag { get; set; }
        public long Size { get; set; }

    }


}
