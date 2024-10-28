using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AspProjekat.Application.DTO
{
    public class CreateApplicationDto
    {
        public int UserId { get; set; }

        public int JobId { get; set; }
        public IFormFile File { get; set; }
        public string Letter {  get; set; }

        public int Status { get; set; }


    }
}
