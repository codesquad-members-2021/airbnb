package com.codesquad.airbnb.web.sqls

const val SAVE_USER: String = """
insert into `user` (oauth_id, authenticated_by, nickname, name, profile_image, access_token)
values (:oauth_id, :authenticated_by, :nickname, :name, :profile_image, :access_token);
"""

const val SAVE_HOST: String = """
insert into host (user_id, is_superhost)
values (:user_id, :is_superhost);
"""

const val FIND_USER_BY_ID: String = """
select id, nickname, name, profile_image, access_token, oauth_id, authenticated_by
from user
where authenticated_by = :authenticated_by
  and oauth_id = :oauth_id;
"""

const val UPDATE_TOKEN: String = """
update user
set access_token = :access_token
where id = :id;
"""

const val FIND_GUEST: String = """
select u.id, u.name, u.profile_image from guest
join user u on u.id = guest.user_id
where user_id = :guest_id;
"""
