# start server with default formatter
{:ok, _} = Report.start_link(HTMLFormatter)

context = %{
  title: "Testando design pattern strategy",
  text: ["Testando design pattern strategy", "texto do corpo html"]
}

Report.output_report(context)

# Change the formatter at runtime
Report.change_format(PlainTextFormatter)
Report.output_report(context)
