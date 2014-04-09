curl -XPUT 'http://localhost:9200/usabilitydynamics.com/identity/22' -d '{
		"objectclass": "user",
		"ou": "user",
		"o": "UsabilityDynamics, Inc.",
		"uid": "22",
    "cn" : "andy.potanin@usabilitydynamics.com",
		"name": { "first": "Andy", "last": "Potanin" },
		"mail" : "andy.potanin@usabilitydynamics.com",
    "roles" : [ "admin" ],
		"phone": "651.399.5473",
		"description": "Enjoys long walks on the beach."
}'

curl -XPUT 'http://localhost:9200/usabilitydynamics.com/identity/25' -d '{
		"objectclass": "user",
		"ou": "user",		
		"o": "UsabilityDynamics, Inc.",		
		"uid": "25",		
    "cn" : "reid.williams@usabilitydynamics.com",
		"name": { "first": "Reid", "last": "Williams" },
    "mail" : "reid.williams@usabilitydynamics.com",
    "roles" : [ "admin" ],
		"phone": "555-123-33322"
}'


curl -XPUT 'http://localhost:9200/tandemproperties.com/identity/32' -d '{
		"objectclass": "user",
		"ou": "user",		
		"o": "TandemProperties, Inc.",		
		"uid": "32",
		"name": { "first": "Don", "last": "Lipper" },
    "cn" : "don.lipper@tandemproperties.com",
    "mail" : "don.lipper@tandemproperties.com",
    "roles" : [ "manager" ],
		"phone": "123-234-2323"
}'

curl -XPUT 'http://localhost:9200/discodonniepresents.com/identity/32' -d '{
		"objectclass": "service",
		"o": "DiscoDonniePresents.",		
		"ou": "service",		
		"uid": "2100",		
    "cn" : "daemon@discodonniepresents.com",
    "mail" : "daemon@discodonniepresents.com",
    "role" : "daemon",
		"shell": "/bin/sh",
		"description": "DDP wpCloud Daemon",
    "roles" : [ "daemon" ],		
		"homedirectory": "/var/root"
}'
