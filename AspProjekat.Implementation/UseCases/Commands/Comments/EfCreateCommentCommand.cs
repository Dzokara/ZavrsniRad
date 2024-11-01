﻿using AspProjekat.Application;
using AspProjekat.Application.DTO;
using AspProjekat.Application.UseCases.Commands.Comments;
using AspProjekat.Application.UseCases.Commands.Companies;
using AspProjekat.DataAccess;
using AspProjekat.Domain;
using AspProjekat.Implementation.Validators;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;

namespace AspProjekat.Implementation.UseCases.Commands.Comments
{
    public class EfCreateCommentCommand : EfUseCase, ICreateCommentCommand
    {
        public int Id => 5;
        public string Name => "Create Comment";
        private readonly IApplicationActor _actor;
        private readonly CreateCommentDtoValidator _validator;

        public EfCreateCommentCommand(AspContext context, CreateCommentDtoValidator validator, IApplicationActor actor)
            : base(context)
        {
            _validator = validator;
            _actor = actor;
        }

        public void Execute(CreateCommentDto data)
        {
            _validator.ValidateAndThrow(data);

            var comment = new Comment
            {
                Text = data.Text,
                AuthorId = _actor.Id,
                BlogId = data.BlogId
            };

            Context.Comments.Add(comment);
            Context.SaveChanges();
        }
    }
}
