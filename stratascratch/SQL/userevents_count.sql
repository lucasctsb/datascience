# Question: Count the number of user events performed by MacBookPro users. Output the result along with the event name. Sort the result based on the event count in the descending order.

# Database is "playbook_events" and it has the following columns: "user_id", "occurred_at", "event_type", "event_name" "location", and "device".

# Code:
  SELECT event_name, COUNT(*) as num_events
  FROM playbook_events
  WHERE device = 'macbook pro'
  GROUP BY event_name
  ORDER BY num_events DESC;
  
# Output will be:
  event_name	num_events
  home_page	      8
  like_message	  3
  login	          3
  view_inbox	    3
  search_autocomplete	3
  send_message	  1

