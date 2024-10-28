using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AspProjekat.Application.DTO
{
    public class ApplicationDto
    {
        public int Id { get; set; }

        public JobDto Job { get; set; }

        public UserDto User { get; set; }

        public string File {  get; set; }

        public string Letter { get; set; }

        public int Status { get; set; }

    }
}
