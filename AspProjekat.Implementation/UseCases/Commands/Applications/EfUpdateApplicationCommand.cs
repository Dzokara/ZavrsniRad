using AspProjekat.Application.DTO;
using AspProjekat.Application.Exceptions;
using AspProjekat.Application.UseCases.Commands.Applications;
using AspProjekat.Application.UseCases.Commands.Categories;
using AspProjekat.DataAccess;
using AspProjekat.Implementation.Validators;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FluentValidation;

namespace AspProjekat.Implementation.UseCases.Commands.Applications
{
    public class EfUpdateApplicationCommand : EfUseCase, IUpdateApplicationCommand
    {


        public int Id => 4;

        public string Name => "Update category";

        private readonly UpdateApplicationDtoValidator _validator;

        public EfUpdateApplicationCommand(AspContext context, UpdateApplicationDtoValidator validator) : base(context)
        {
            _validator = validator;
        }

        public void Execute(UpdateApplicationDto request)
        {

            _validator.ValidateAndThrow(request);

            var application = Context.Applications.FirstOrDefault(x => x.Id == request.Id);

            if (application == null)
            {
                throw new EntityNotFoundException("Application ", request.Id);
            }

            application.Status = request.Status;


            Context.SaveChanges();
        }
    }
}
