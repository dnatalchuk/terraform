provider "local" {}

output "rendered" {
value = "${data.template_file.ecs_task.rendered}"
}

resource "local_file" "foo" {
content = "${data.template_file.ecs_task.rendered}"
filename = "test.js"
}
