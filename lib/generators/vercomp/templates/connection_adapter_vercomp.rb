# frozen_string_literal: true

module ActiveRecord
  module ConnectionAdapters
    if const_defined?(:PostgreSQLAdapter)
      class PostgreSQLAdapter
        NATIVE_DATABASE_TYPES.merge!(
          version: { name: 'VERSION' }
        )
      end
    end
    if const_defined?(:PostgreSQLAdapter)
      module PostgreSQL
        module ColumnMethods
          def version(*args, **options)
            args.each { |name| column(name, :version, options) }
          end
        end
      end
    end
  end
end
