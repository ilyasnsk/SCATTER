mksqlite('open', DB_PATH, 'rw');
earthquakes = mksqlite( [ ...
    ' SELECT `id`, `origin_time` ' ...
    ' FROM `earthquake` ' ...
    ] );
for i=1:length(earthquakes)
    process_earthquake(earthquakes(i));
end
mksqlite('close')
