# frozen_string_literal: true

require 'pathname'
SPEC_ROOT = Pathname(__dir__).realpath.freeze

ENV['HANAMI_ENV'] ||= 'test'
require 'hanami/prepare'
require 'pry'

require_relative 'support/rspec'
require_relative 'support/requests'
require_relative 'support/database_cleaner'
