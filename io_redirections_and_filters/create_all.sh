#!/usr/bin/env bash

cat > 0-hello_world <<'EOT'
#!/usr/bin/env bash
echo "Hello, World"
EOT

cat > 1-confused_smiley <<'EOT'
#!/usr/bin/env bash
echo "\"(Ôo)'"
EOT

cat > 2-hellofile <<'EOT'
#!/usr/bin/env bash
cat /etc/passwd
EOT

cat > 3-twofiles <<'EOT'
#!/usr/bin/env bash
cat /etc/passwd /etc/hosts
EOT

cat > 4-lastlines <<'EOT'
#!/usr/bin/env bash
tail /etc/passwd
EOT

cat > 5-firstlines <<'EOT'
#!/usr/bin/env bash
head /etc/passwd
EOT

cat > 6-third_line <<'EOT'
#!/usr/bin/env bash
head -n 3 iacta | tail -n 1
EOT

cat > 8-cwd_state <<'EOT'
#!/usr/bin/env bash
ls -la > ls_cwd_content
EOT

cat > 9-duplicate_last_line <<'EOT'
#!/usr/bin/env bash
tail -n 1 iacta >> iacta
EOT

cat > 10-no_more_js <<'EOT'
#!/usr/bin/env bash
find . -type f -name "*.js" -delete
EOT

cat > 11-directories <<'EOT'
#!/usr/bin/env bash
find . -mindepth 1 -type d | wc -l
EOT

cat > 12-newest_files <<'EOT'
#!/usr/bin/env bash
ls -t | head
EOT

cat > 13-unique <<'EOT'
#!/usr/bin/env bash
sort | uniq -u
EOT

cat > 14-findthatword <<'EOT'
#!/usr/bin/env bash
grep "root" /etc/passwd
EOT

cat > 15-countthatword <<'EOT'
#!/usr/bin/env bash
grep -c "bin" /etc/passwd
EOT

cat > 16-whatsnext <<'EOT'
#!/usr/bin/env bash
grep -A 3 "root" /etc/passwd
EOT

cat > 17-hidethisword <<'EOT'
#!/usr/bin/env bash
grep -v "bin" /etc/passwd
EOT

cat > 18-letteronly <<'EOT'
#!/usr/bin/env bash
grep '^[[:alpha:]]' /etc/ssh/sshd_config
EOT

cat > 19-AZ <<'EOT'
#!/usr/bin/env bash
tr 'Ac' 'Ze'
EOT

cat > 20-hiago <<'EOT'
#!/usr/bin/env bash
tr -d 'cC'
EOT

cat > 21-reverse <<'EOT'
#!/usr/bin/env bash
rev
EOT

cat > 22-users_and_homes <<'EOT'
#!/usr/bin/env bash
cut -d: -f1,6 /etc/passwd | sort
EOT

cat > 23-empty_casks <<'EOT'
#!/usr/bin/env bash
find . -empty -printf '%f\n'
EOT

cat > 24-gifs <<'EOT'
#!/usr/bin/env bash
find . -type f -name "*.gif" -printf '%f\n' | sed 's/\.gif$//' | sort -f
EOT

cat > 25-acrostic <<'EOT'
#!/usr/bin/env bash
cut -c1 | tr -d '\n'
echo
EOT

cat > 26-the_biggest_fan <<'EOT'
#!/usr/bin/env bash
tail -n +2 | cut -f1 | sort | uniq -c | sort -rn | head -11 | awk '{print $2}'
EOT

chmod +x 0-hello_world 1-confused_smiley 2-hellofile 3-twofiles 4-lastlines \
5-firstlines 6-third_line 8-cwd_state 9-duplicate_last_line 10-no_more_js \
11-directories 12-newest_files 13-unique 14-findthatword 15-countthatword \
16-whatsnext 17-hidethisword 18-letteronly 19-AZ 20-hiago 21-reverse \
22-users_and_homes 23-empty_casks 24-gifs 25-acrostic 26-the_biggest_fan

echo "Files created."
