using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TravelExpressAsp.Startup))]
namespace TravelExpressAsp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
