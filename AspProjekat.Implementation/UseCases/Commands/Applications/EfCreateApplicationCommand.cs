using AspProjekat.Application.DTO;
using AspProjekat.Application.UseCases.Commands.Applications;
using AspProjekat.DataAccess;
using AspProjekat.Domain;
using AspProjekat.Implementation.Validators;
using FluentValidation;

namespace AspProjekat.Implementation.UseCases.Commands.Applications
{
    public class EfCreateApplicationCommand : EfUseCase, ICreateApplicationCommand
    {
        public int Id => 5;
        public string Name => "Create Application";

        private readonly CreateApplicationDtoValidator _validator;

        public EfCreateApplicationCommand(AspContext context, CreateApplicationDtoValidator validator)
            : base(context)
        {
            _validator = validator;
        }

        public void Execute(CreateApplicationDto data)
        {
            _validator.ValidateAndThrow(data);
            var application = new AspProjekat.Domain.Application
            {
                UserId = data.UserId,
                JobId = data.JobId,
                File = new Domain.File
                {
                    Path = data.File.FileName,
                },
                Letter = data.Letter,
                Status = 1,
            };

            Context.Applications.Add(application);
            Context.SaveChanges();
        }
    }
}
