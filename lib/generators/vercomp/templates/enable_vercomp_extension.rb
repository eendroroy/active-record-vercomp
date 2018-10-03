class EnableVercompExtension < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'vercomp'
  end
end
