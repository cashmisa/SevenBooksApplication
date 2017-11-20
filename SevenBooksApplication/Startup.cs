using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SevenBooksApplication.Startup))]
namespace SevenBooksApplication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
