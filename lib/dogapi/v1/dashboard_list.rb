require 'dogapi'

module Dogapi
  class V1 # for namespacing

    # Dashboard List API
    class DashboardListService < Dogapi::APIService

      API_VERSION = 'v1'
      RESOURCE_NAME = 'dashboard/lists/manual'
      SUB_RESOURCE_NAME = 'dashboards'

      def create(name)
        body = {
          name: name
        }

        request(Net::HTTP::Post, "/api/#{API_VERSION}/#{RESOURCE_NAME}", nil, body, true)
      end

      def update(resource_id, name)
        body = {
          name: name
        }

        request(Net::HTTP::Put, "/api/#{API_VERSION}/#{RESOURCE_NAME}/#{resource_id}", nil, body, true)
      end

      def get(resource_id)
        request(Net::HTTP::Get, "/api/#{API_VERSION}/#{RESOURCE_NAME}/#{resource_id}", nil, nil, false)
      end

      def all
        request(Net::HTTP::Get, "/api/#{API_VERSION}/#{RESOURCE_NAME}", nil, nil, false)
      end

      def delete(resource_id)
        request(Net::HTTP::Delete, "/api/#{API_VERSION}/#{RESOURCE_NAME}/#{resource_id}", nil, nil, false)
      end

      def get_items(resource_id)
        request(
          Net::HTTP::Get,
          "/api/#{API_VERSION}/#{RESOURCE_NAME}/#{resource_id}/#{SUB_RESOURCE_NAME}",
          nil,
          nil,
          false
        )
      end

      def add_items(resource_id, dashboards)
        body = {
          dashboards: dashboards
        }

        request(
          Net::HTTP::Post,
          "/api/#{API_VERSION}/#{RESOURCE_NAME}/#{resource_id}/#{SUB_RESOURCE_NAME}",
          nil,
          body,
          true
        )
      end

      def update_items(resource_id, dashboards)
        body = {
          dashboards: dashboards
        }

        request(
          Net::HTTP::Put,
          "/api/#{API_VERSION}/#{RESOURCE_NAME}/#{resource_id}/#{SUB_RESOURCE_NAME}",
          nil,
          body,
          true
        )
      end

      def delete_items(resource_id, dashboards)
        body = {
          dashboards: dashboards
        }

        request(
          Net::HTTP::Delete,
          "/api/#{API_VERSION}/#{RESOURCE_NAME}/#{resource_id}/#{SUB_RESOURCE_NAME}",
          nil,
          body,
          true
        )
      end

    end

  end
end
