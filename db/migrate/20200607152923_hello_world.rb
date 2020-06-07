# typed: true
# frozen_string_literal: true

class HelloWorld < ActiveRecord::Migration[6.0]
  def change
    create_table :organisations do |t|
      t.column :name, :string, null: false
      t.timestamps null: false
    end

    create_table :users do |t|
      # Devise code

      ## Database authenticatable
      t.string :email,null: false
      t.string :encrypted_password, null: false

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.inet :current_sign_in_ip
      # t.inet :last_sign_in_ip

      ## Confirmable
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string :unconfirmed_email

      ## Lockable
      # t.integer :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      # Below here is non-devise code
      t.references :organisation, null: false, index: true, foreign_key: { on_delete: :cascade }
      t.column :name, :string, null: false

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token, unique: true
    # add_index :users, :unlock_token, unique: true

    create_table :workflows do |t|
      t.references :organisation, null: false, index: true, foreign_key: { on_delete: :cascade }
      t.timestamps null: false
    end

    create_table :steps do |t|
      t.column :type, :string, null: false
      t.column :arguments, :jsonb, null: false, default: {}
      t.references :workflow, null: false, index: true, foreign_key: { on_delete: :cascade }
      t.timestamps null: false
    end
  end
end
