using AspProjekat.Application.DTO;
using AspProjekat.Application.UseCases.Queries;
using AspProjekat.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AspProjekat.Implementation.UseCases.Queries
{
    public class EfGetCApplicationsQuery : EfUseCase, IGetApplicationsQuery
    {
        public EfGetCApplicationsQuery(AspContext context) : base(context)
        {
        }

        public int Id => 2;

        public string Name => "Search applications";

        public PagedResponse<ApplicationDto> Execute(int id)
        {
            var query = Context.Applications.AsQueryable();

            int totalCount = query.Count();

            query = query.Where(x => x.IsActive);

            return new PagedResponse<ApplicationDto>
            {
                Data = query.Where(x => x.IsActive && x.JobId == id).Select(x => new ApplicationDto
                {
                    Id = x.Id,
                    Letter = x.Letter,
                    Status = x.Status,
                    Job = new JobDto
                    {
                        Id = x.Job.Id,
                        Position = new PositionDto
                        {
                            Id = x.Job.PositionId,
                            Name = x.Job.Position.Name
                        },
                        Company = new CompanyDto
                        {
                            Id = x.Job.CompanyId,
                            Name = x.Job.Company.Name
                        },
                        Technologies = x.Job.Technology.Select(t => new TechnologyDto
                        {
                            Id = t.TechnologyId,
                            Name = t.Technology.Name
                        }),
                        Region = new RegionDto
                        {
                            Id = x.Job.RegionId,
                            Name = x.Job.Region.Name
                        },
                        Type = new TypeDto
                        {
                            Id = x.Job.TypeId,
                            Name = x.Job.Type.Name
                        },
                        Description = x.Job.Description,
                        Salary = x.Job.Salary,
                        Benefits = x.Job.Benefits.Select(b => new BenefitDto
                        {
                            Id = b.BenefitId,
                            Name = b.Benefit.Name
                        }),
                        Categories = x.Job.Categories.Select(c => new CategoryDto
                        {
                            Id = c.CategoryId,
                            Name = c.Category.Name
                        }),
                        Deadline = x.Job.Deadline,
                        Remote = new RemoteDto
                        {
                            Id = x.Job.RemoteId,
                            Name = x.Job.Remote.Name
                        }
                    },
                    File = x.File.Path
                }).ToList(),
            };
        }
    }
}
