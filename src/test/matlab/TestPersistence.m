classdef TestPersistence < io.mpa.Persistence
    
    enumeration
        ENTITIES([...
            TestSchema.COMPUND_ENTITY_DS,...
            TestSchema.COMPUND_ENTITY_ATTR,...
            TestSchema.SIMPLE_ENTITY_ATTR,...
            TestSchema.COMPLEX_ENTITY,...
            ])
    end
end

