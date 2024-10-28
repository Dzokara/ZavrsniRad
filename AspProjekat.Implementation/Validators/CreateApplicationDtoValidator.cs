using AspProjekat.Application.DTO;
using AspProjekat.DataAccess;
using FluentValidation;
using Microsoft.AspNetCore.Http;
using System.Linq;

namespace AspProjekat.Implementation.Validators
{
    public class CreateApplicationDtoValidator : AbstractValidator<CreateApplicationDto>
    {
        private readonly AspContext _context;

        public CreateApplicationDtoValidator(AspContext context)
        {
            CascadeMode = CascadeMode.StopOnFirstFailure;
            _context = context;

            RuleFor(x => x.JobId)
                .NotNull().WithMessage("Job ID is required.")
                .Must(JobExists).WithMessage("Job must exist in the database.");

            RuleFor(x => x.UserId)
                .NotNull().WithMessage("User ID is required.")
                .Must(UserExists).WithMessage("User must exist in the database.");

            RuleFor(x => x.File)
                .NotNull().WithMessage("File is required.")
                .Must(file => file.Length > 0).WithMessage("Uploaded file cannot be empty.");

            RuleFor(x => x.Letter)
                .NotEmpty().WithMessage("Letter is required.")
                .MinimumLength(10).WithMessage("Letter must be at least 10 characters long.");

            RuleFor(x => x.Status)
                .InclusiveBetween(1, 3).WithMessage("Status must be between 1 and 3.");
        }

        private bool JobExists(int jobId)
        {
            return _context.Jobs.Any(j => j.Id == jobId);
        }

        private bool UserExists(int userId)
        {
            return _context.Users.Any(u => u.Id == userId);
        }
    }
}
