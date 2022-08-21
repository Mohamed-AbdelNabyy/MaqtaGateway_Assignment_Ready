namespace Employee.Providers
{
    public interface IHttpContextDetailsProvider
    {
        string OrginURL { get; }
        string HostURL { get; }
        Guid CurrentUserID { get; }
        int CurrentUserType { get; }
        string CurrentUserName { get; }
        int LanguageID { get; }
        int UserTenantID { get; }
    }
}
