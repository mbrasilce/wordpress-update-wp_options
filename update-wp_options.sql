SET SQL_SAFE_UPDATES = 0;

UPDATE wp_options SET option_value = replace(option_value, 'oldurl', 'newurl') WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET guid = replace(guid, 'oldurl','newurl');
UPDATE wp_posts SET post_content = replace(post_content, 'oldurl', 'newurl');
UPDATE wp_postmeta SET meta_value = replace(meta_value,'oldurl','newurl');
