module "dynamodb_osv_database_cluster" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "3.3.0"

  create_table = true
  name         = "database-cluster-test"
  hash_key     = "clusterName"

  attributes = [
    {
      name = "clusterName"
      type = "S"
    }
  ]
}

resource "aws_dynamodb_table_item" "dynamodb_osv_database_cluster_data" {
  table_name = module.dynamodb_osv_database_cluster.dynamodb_table_id
  hash_key   = "clusterName"
  for_each   = toset(var.rds_clusters)
  item       = <<ITEM
  {
    "clusterName": {
      "S": "${each.key}"
    },
    "clusterProperties": {
      "M": {
        "database": {
          "S": "ds_main"
        },
        "host": {
          "S": "dev-usw2-insights-osv-campus-network.cluster-c45tbqcinker.us-west-2.rds.amazonaws.com"
        },
        "hostReadonly": {
          "S": "dev-usw2-insights-osv-campus-network.cluster-ro-c45tbqcinker.us-west-2.rds.amazonaws.com"
        },
        "port": {
          "S": "3306"
        },
        "username": {
          "S": "osv_admin"
        }
      }
    },
    "clusterTag": {
      "S": "${split("-", each.key)[0]}"
    },
    "maxActiveRequests": {
      "N": "200"
    },
    "tenantCapacity": {
      "N": "10"
    }
  }
  ITEM
}