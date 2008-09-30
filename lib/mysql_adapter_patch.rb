module ActiveRecord
  module ConnectionAdapters
    class MysqlColumn
    private
      def extract_limit_with_enum(sql_type)
        sql_type =~ /^enum/ ? 255 : extract_limit_without_enum(sql_type)
      end

      alias_method_chain :extract_limit, :enum
    end
  end
end