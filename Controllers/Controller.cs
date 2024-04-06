using Microsoft.AspNetCore.Mvc;
using Midterm.Services;

namespace Midterm.Controllers
{
    public class Controller : ControllerBase
    {
        private readonly IDatabaseService _databaseService;

        public Controller(IDatabaseService databaseService)
        {
            _databaseService = databaseService;
        }
        [HttpGet]
        [Route("get-nganh-hoc")]

        public IActionResult GetNganh(int manganh)
        {
            var items = _databaseService.GetNganh(manganh);
            return Ok(items);
        }
    }
}
