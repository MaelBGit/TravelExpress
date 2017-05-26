using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TravelExpress.Startup))]
namespace TravelExpress
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
