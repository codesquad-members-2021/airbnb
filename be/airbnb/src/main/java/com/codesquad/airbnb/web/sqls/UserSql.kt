package com.codesquad.airbnb.web.sqls

const val SAVE_USER: String = """
insert into `user` (nickname, name, profile_image, access_token)
values (:nickname, :name, :profile_image, :access_token);
"""
