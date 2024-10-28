using FluentValidation;
using AspProjekat.Application.DTO;
using AspProjekat.DataAccess;

namespace AspProjekat.Implementation.Validators
{
    public class UpdateApplicationDtoValidator : AbstractValidator<UpdateApplicationDto>
    {
        public UpdateApplicationDtoValidator()
        {
            RuleFor(x => x.Status)
                .InclusiveBetween(0, 2)
                .WithMessage("Status must be 0, 1, or 2.");
        }
    }
}
