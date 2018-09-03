module ActiveRecord
  module ConnectionAdapters
    if const_defined?(:PostgreSQLAdapter)
      class PostgreSQLAdapter
        NATIVE_DATABASE_TYPES.merge!(
            address_status:  { name: 'character varying' },
            address_type:    { name: 'character varying' }
        )
      end
    end
  end
end