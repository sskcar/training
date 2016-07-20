#
# DO NOT DELETE THESE LINES!
#
# Your DNSimple email is:
#
#     sethvargo+terraform@gmail.com
#
# Your DNSimple token is:
#
#     sRFRF5ltrFulE4AB6iRgiRshoIWqiuUF
#
# Your Identity is:
#
#     manheim-37693cfc748049e45d87b8c7d8b9aacd
#

provider "dnsimple" {
	token="1b3fdL6IywZS2MUeYLCNj2LXdXzcpoa6"
	email="sethvargo+terraform@gmail.com"
}

resource "dnsimple_record" "www" {
	domain="terraform.rocks"
	name="terraform"
	value="192.168.0.11"
	type="A"
	ttl="3600"
}
