variable "all_members" {
  type        = map(string)
  description = "A list of key-value pair like `member_name`: `role_name`. `role_name` must one of `member` or `admin`."
}
