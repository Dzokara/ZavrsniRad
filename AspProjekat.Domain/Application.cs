using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AspProjekat.Domain
{
    public class Application : Entity
    {
        public int UserId { get; set; }
        public int FileId { get; set; }
        public int Status { get; set; }
        public string Letter {  get; set; }

        public int JobId { get; set; }

        public virtual User User { get; set; }

        public virtual File File { get; set; }

        public virtual Job Job { get; set; }
    }
}
