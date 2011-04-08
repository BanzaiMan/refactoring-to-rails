require 'java'

module org::springframework::beans::factory::BeanFactory
  def [](key)
    getBean(key)
  end

  def include?(key)
    containsBean(key)
  end
end

module Spring
  def self.included(base)
    base.extend self
  end

  def context
    CONTEXT
  end

  def clinic
    context['clinic']
  end
end
