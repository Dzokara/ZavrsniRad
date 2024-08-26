﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AspProjekat.Domain
{
    public class Job : Entity
    {
        public int RegionId { get; set; }
        public int TypeId { get; set; }
        public int RemoteId { get; set; }
        public int CompanyId { get; set; }
        public int PositionId { get; set; }

        public string Description { get; set; }

        public decimal Salary { get; set; }

        public DateTime Deadline { get; set; }

        public virtual Region Region { get; set; }

        public virtual Type Type { get; set; }

        public virtual ICollection<CategoryJob> Categories { get; set; } = new HashSet<CategoryJob>();

        public virtual Remote Remote{ get; set; }

        public virtual Company Company { get; set; }

        public virtual Position Position { get; set; } 

        public virtual ICollection<BenefitJob> Benefits { get; set; } = new HashSet<BenefitJob>();

        public virtual ICollection<JobTechnology> Technology { get; set; } = new HashSet<JobTechnology>();

        public virtual ICollection<JobUser> SavedUsers {  get; set; }  = new HashSet<JobUser>();  

    }
}
