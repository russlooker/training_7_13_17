connection: "events_ecommerce"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project



explore: users {
  join: user_facts {
    fields: [user_facts.average_lifetime_value
      , user_facts.first_order_date_date
      , user_facts.latest_order_date_date]
    view_label: "Users"
    type: left_outer
    relationship: one_to_one
    sql_on: ${users.id} = ${user_facts.user_id} ;;
  }

}
