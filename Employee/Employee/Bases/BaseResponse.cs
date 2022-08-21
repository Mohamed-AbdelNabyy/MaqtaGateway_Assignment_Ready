namespace Employee.Bases
{
    public class BaseResponse
    {
        public BaseResponse() { }

        public BaseResponse(int responseCode, string responseMessage, List<ValidationError>? validationList = null, dynamic? responseData = null)
        {
            ResponseCode = responseCode;
            ResponseMessage = responseMessage;
            ValidationList = validationList;
            ResponseData = responseData;
        }

        public int ResponseCode { get; set; }
        public string ResponseMessage { get; set; }
        public List<ValidationError>? ValidationList { get; set; }
        public dynamic? ResponseData { get; set; }
    }
    public class BaseResponse<T> where T : class
    {
        public BaseResponse() { }
        public BaseResponse(int responseCode, string responseMessage, List<ValidationError>? validationList = null, T responseData = null)
        {
            ResponseCode = responseCode;
            ResponseMessage = responseMessage;
            ValidationList = validationList;
            ResponseData = responseData;
        }
        public int ResponseCode { get; set; }
        public string ResponseMessage { get; set; }
        public List<ValidationError>? ValidationList { get; set; }
        public T? ResponseData { get; set; }
    }

    public class ValidationError
    {
        public string FieldName { get; set; }
        public string ValidationMessage { get; set; }
    }
}
