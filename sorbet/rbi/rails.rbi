# typed: strong
class Rails::Application
  def self.config; end
  def config; end
end

class ActionMailer::Base
  def self.layout(layout); end
end

class ActiveSupport::Logger
  def formatter=(formatter); end
end

class ActiveSupport::TestCase
  def self.fixtures(formatter); end
end

class ActionDispatch::Routing::Mapper
  def devise_for(x); end
end

class ActiveRecord::Base
  def self.devise(*options); end
end

class ActiveSupport::TestCase
  def self.assert(a, msg=T.unsafe(nil)); end
  def self.assert_equal(a, b, msg=T.unsafe(nil)); end
  def self.assert_not_equal(a, b, msg=T.unsafe(nil)); end
  def self.assert_match(matcher, obj, msg=T.unsafe(nil)); end
  def self.assert_empty(obj, msg=T.unsafe(nil)); end
  def self.assert_equal(exp, act, msg=T.unsafe(nil)); end
  def self.assert_in_delta(exp, act, delta=T.unsafe(nil), msg=T.unsafe(nil)); end
  def self.assert_in_epsilon(a, b, epsilon=T.unsafe(nil), msg=T.unsafe(nil)); end
  def self.assert_includes(collection, obj, msg=T.unsafe(nil)); end
  def self.assert_instance_of(cls, obj, msg=T.unsafe(nil)); end
  def self.assert_kind_of(cls, obj, msg=T.unsafe(nil)); end
  def self.assert_nil(obj, msg=T.unsafe(nil)); end
  def self.assert_operator(o1, op, o2=T.unsafe(nil), msg=T.unsafe(nil)); end
  def self.assert_predicate(o1, op, msg=T.unsafe(nil)); end
  def self.assert_respond_to(obj, meth, msg=T.unsafe(nil)); end
  def self.assert_same(exp, act, msg=T.unsafe(nil)); end
  def self.assert_no_match(matcher, obj, msg=T.unsafe(nil)); end
  def self.assert_not_empty(obj, msg=T.unsafe(nil)); end
  def self.assert_not_equal(exp, act, msg=T.unsafe(nil)); end
  def self.assert_not_in_delta(exp, act, delta=T.unsafe(nil), msg=T.unsafe(nil)); end
  def self.assert_not_in_epsilon(a, b, epsilon=T.unsafe(nil), msg=T.unsafe(nil)); end
  def self.assert_not_includes(collection, obj, msg=T.unsafe(nil)); end
  def self.assert_not_instance_of(cls, obj, msg=T.unsafe(nil)); end
  def self.assert_not_kind_of(cls, obj, msg=T.unsafe(nil)); end
  def self.assert_not_nil(obj, msg=T.unsafe(nil)); end
  def self.assert_not_operator(o1, op, o2=T.unsafe(nil), msg=T.unsafe(nil)); end
  def self.assert_not_predicate(o1, op, msg=T.unsafe(nil)); end
  def self.assert_not_respond_to(obj, meth, msg=T.unsafe(nil)); end
  def self.assert_not_same(exp, act, msg=T.unsafe(nil)); end
  def self.assert_raise(*exp); end
end
