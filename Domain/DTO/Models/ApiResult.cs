namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class ApiResult<T>
    {
        public bool Success { get; set; }
        public string Message { get; set; }
        public T Data { get; set; }

        // Constructor para inicializar los valores
        public ApiResult(bool success, string message, T data)
        {
            Success = success;
            Message = message;
            Data = data;
        }

        // Método para crear un resultado exitoso
        public static ApiResult<T> SuccessResult(T data, string message = "Operation successful")
        {
            return new ApiResult<T>(true, message, data);
        }

        // Método para crear un resultado de error
        public static ApiResult<T> ErrorResult(string message)
        {
            return new ApiResult<T>(false, message, default);
        }
    }

}
