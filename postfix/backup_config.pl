
do 'postfix-lib.pl';

# backup_config_files()
# Returns files and directories that can be backed up
sub backup_config_files
{
return &get_all_config_files();
}

# pre_backup(&files)
# Called before the files are actually read
sub pre_backup
{
return undef;
}

# post_backup(&files)
# Called after the files are actually read
sub post_backup
{
return undef;
}

# pre_restore(&files)
# Called before the files are restored from a backup
sub pre_restore
{
return undef;
}

# post_restore(&files)
# Called after the files are restored from a backup
sub post_restore
{
if (&is_postfix_running()) {
	return &reload_postfix();
	}
return undef;
}

1;

