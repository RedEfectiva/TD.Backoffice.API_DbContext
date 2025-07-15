// TD.Backoffice.API_DbContext.Domain.DTO.Models/OperacionResultModel.cs
namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class OperacionResultModel
    {
        public bool Success { get; set; }
        public string Message { get; set; }
        public object Data { get; set; }

        public static OperacionResultModel CreateSuccess(string message = "Operación exitosa", object data = null)
        {
            return new OperacionResultModel
            {
                Success = true,
                Message = message,
                Data = data
            };
        }

        public static OperacionResultModel CreateFailure(string message)
        {
            return new OperacionResultModel
            {
                Success = false,
                Message = message
            };
        }
    }
}