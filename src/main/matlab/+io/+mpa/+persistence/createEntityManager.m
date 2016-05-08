function obj = createEntityManager(id, h5properties)

    if nargin < 2
        h5properties = which('h5properties.json');
    end

    json = loadjson(h5properties);
    fileProperties = json.location;
    persistenceClass = json.persistence;

    [entity, description] = enumeration(persistenceClass);
    entityMap = containers.Map();
    for i = 1 :numel(entity)
        entityMap(description{i}) = entity(i);
    end

    obj = io.mpa.EntityManagerFactory(fileProperties, persistenceClass).create(id, entityMap);
end

