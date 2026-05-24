using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;

var builder = WebApplication.CreateBuilder(args);

// Add services
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

app.UseSwagger();
app.UseSwaggerUI();

// Basic health endpoint
app.MapGet("/", () => "DKGST Minimal API Running");

// Company/sample endpoints
app.MapGet("/api/companies", () => new[] { new { Id = 1, Name = "Sample Company" } });

// Accounting/sample endpoints
app.MapGet("/api/accounts", () => new[] { new { Id = 1, AccountName = "Cash" } });

app.Run();
